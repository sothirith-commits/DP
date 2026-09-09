.class public final Lcom/liulishuo/okdownload/core/download/ConnectTrial;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTENT_DISPOSITION_NON_QUOTED_PATTERN:Ljava/util/regex/Pattern;

.field public static final CONTENT_DISPOSITION_QUOTED_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public acceptRange:Z

.field public instanceLength:J

.field public responseCode:I

.field public responseEtag:Ljava/lang/String;

.field public responseFilename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->CONTENT_DISPOSITION_QUOTED_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "attachment;\\s*filename\\s*=\\s*(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->CONTENT_DISPOSITION_NON_QUOTED_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static findInstanceLength(Lcom/koushikdutta/async/FilteredDataEmitter$1;)J
    .locals 7

    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/net/URLConnection;

    const-string v1, "Content-Range"

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectTrial"

    const-wide/16 v2, -0x1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move-wide v4, v2

    goto :goto_1

    :cond_1
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    :try_start_0
    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "parse instance length failed with "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/liulishuo/okdownload/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    return-wide v4

    :cond_2
    iget-object p0, p0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/net/URLConnection;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "chunked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const-string p0, "Transfer-Encoding isn\'t chunked but there is no valid instance length found either!"

    invoke-static {v1, p0}, Lcom/liulishuo/okdownload/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-wide v2
.end method
