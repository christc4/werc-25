    #include "tree.h"
    extern bool duflag, dflag, hflag, siflag;
    extern bool metafirst, noindent, force_color, nolinks, htmloffset;
    /*extern char *hversion;*/
    extern char *host, *sp, *title, *Hintro, *Houtro;
    extern const char *charset;
    extern FILE *outfile;
    extern const struct linedraw *linedraw;
    size_t htmldirlen = 0;
    char *class(struct _info *info)
    {
      return
        info->isdir  ? "DIR"  :
        info->isexe  ? "EXEC" :
        info->isfifo ? "FIFO" :
        info->issok  ? "SOCK" : "NORM";
    }

    void html_encode(FILE *fd, char *s)
    {
      for(;*s;s++) {
        switch(*s) {
          case '<':
        fputs("&lt;",fd);
        break;
          case '>':
        fputs("&gt;",fd);
        break;
          case '&':
        fputs("&amp;",fd);
        break;
          case '"':
        fputs("&quot;",fd);
        break;
          default:
        fputc(*s,fd);
        break;
        }
      }
    }

    void url_encode(FILE *fd, char *s)
    {
      // Removes / from the reserved list:
      static const char *reserved = "!#$&'()*+,:;=?@[]";
      for(;*s;s++) {
        fprintf(fd, (isprint((u_int)*s) && (strchr(reserved, *s) == NULL))? "%c":"%%%02X", *s);
      }
    }

    void fcat(const char *filename)
    {
      FILE *fp;
      char buf[PATH_MAX];
      size_t n;

      if ((fp = fopen(filename, "r")) == NULL) return;
      while((n = fread(buf, sizeof(char), PATH_MAX, fp)) > 0) {
        fwrite(buf, sizeof(char), n, outfile);
      }
      fclose(fp);
    }


    void html_intro(void)
    {
      if (Hintro) fcat(Hintro);
      else {
        fprintf(outfile,
        " <title>Sitemap</title><p class=sitemap>\n");
      }
    }


    void html_outtro(void)
    {
      if (Houtro) fcat(Houtro);
      else {
        fprintf(outfile,"\t<p>For how I generate this, <a href=/src/werc/apps/search>see</a>\n");
    /*    fprintf(outfile,hversion,linedraw->copy, linedraw->copy, linedraw->copy, linedraw->copy);*/
      }
    }


    void html_print(char *s)
    {
      int i;
      for(i=0; s[i]; i++) {
        if (s[i] == ' ') fprintf(outfile,"%s",sp);
        else fprintf(outfile,"%c", s[i]);
      }
      fprintf(outfile,"%s%s", sp, sp);
    }

    int html_printinfo(char *dirname, struct _info *file, int level)
    {
      UNUSED(dirname);

      char info[512];

      fillinfo(info,file);
      if (metafirst) {
        if (info[0] == '[') {
          html_print(info);
          fprintf(outfile,"%s%s", sp, sp);
        }
        if (!noindent) indent(level);
      } else {
        if (!noindent) indent(level);
        if (info[0] == '[') {
          html_print(info);
          fprintf(outfile,"%s%s", sp, sp);
        }
      }

      return 0;
    }

    /* descend == add 00Tree.html to the link */
    int html_printfile(char *dirname, char *filename, struct _info *file, int descend)
    {
      int i;
      /* Switch to using 'a' elements only. Omit href attribute if not a link */
      fprintf(outfile,"<a");
      if (file) {
        if (force_color) fprintf(outfile," class=\"%s\"", class(file));
        if (file->comment) {
          fprintf(outfile," title=\"");
          for(i=0; file->comment[i]; i++) {
        html_encode(outfile, file->comment[i]);
        if (file->comment[i+1]) fprintf(outfile, "\n");
          }
          fprintf(outfile, "\"");
        }

        if (!nolinks) {
          fprintf(outfile," href=\"%s",host);
          if (dirname != NULL) {
        size_t len = strlen(dirname);
        size_t off = (len >= htmldirlen? htmldirlen : 0);
        url_encode(outfile, dirname + (htmloffset? off : 0));
        if (strcmp(dirname, filename) != 0) {
          if (dirname[strlen(dirname)-1] != '/') putc('/', outfile);
          url_encode(outfile, filename);
        }
        fprintf(outfile,"%s%s\"",(descend > 1? "/00Tree.html" : ""), (file->isdir && descend < 2?"/":""));
          } else {
        if (host[strlen(host)-1] != '/') putc('/', outfile);
        url_encode(outfile, filename);
        fprintf(outfile,"%s\"",(descend > 1? "/00Tree.html" : ""));
          }
        }
      }
      fprintf(outfile, ">");

      if (dirname) html_encode(outfile,filename);
      else html_encode(outfile, host);

      fprintf(outfile,"</a>");
      return 0;
    }

    int html_error(char *error)
    {
      fprintf(outfile, "  [%s]", error);
      return 0;
    }

    void html_newline(struct _info *file, int level, int postdir, int needcomma)
    {
      UNUSED(file);UNUSED(level);UNUSED(postdir);UNUSED(needcomma);

      fprintf(outfile, "<br>\n");
    }

    void html_close(struct _info *file, int level, int needcomma)
    {
      UNUSED(level);UNUSED(needcomma);

      fprintf(outfile, "</%s><br>\n", file->tag);
    }

    void html_report(struct totals tot)
    {
      char buf[256];

      fprintf(outfile,"<p>\n\n");
      if (duflag) {
        psize(buf, tot.size);
        fprintf(outfile,"%s%s used in ", buf, hflag || siflag? "" : " bytes");
      }
      if (dflag)
        fprintf(outfile,"%ld director%s\n",tot.dirs,(tot.dirs==1? "y":"ies"));
      else
        fprintf(outfile,"%ld director%s, %ld file%s\n",tot.dirs,(tot.dirs==1? "y":"ies"),tot.files,(tot.files==1? "":"s"));
    }
