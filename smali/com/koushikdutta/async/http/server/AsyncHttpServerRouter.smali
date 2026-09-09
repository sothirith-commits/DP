.class public Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/server/RouteMatcher;


# static fields
.field public static final mContentTypes:Ljava/util/Hashtable;


# instance fields
.field public final routes:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->mContentTypes:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->routes:Ljava/util/ArrayList;

    sget-object p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->mContentTypes:Ljava/util/Hashtable;

    const-string v0, "js"

    const-string v1, "application/javascript"

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "json"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "png"

    const-string v1, "image/png"

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "jpg"

    const-string v1, "image/jpeg"

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "jpeg"

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "html"

    const-string v1, "text/html"

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "css"

    const-string v1, "text/css"

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mp4"

    const-string v1, "video/mp4"

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mov"

    const-string v1, "video/quicktime"

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wmv"

    const-string v1, "video/x-ms-wmv"

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "txt"

    const-string v1, "text/plain"

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addAction(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;)V
    .locals 2

    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;-><init>(I)V

    const-string v1, "^"

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->regex:Ljava/util/regex/Pattern;

    iput-object p3, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->callback:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;

    iput-object p1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->method:Ljava/lang/String;

    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->routes:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->routes:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final route(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/FilteredDataEmitter$1;
    .locals 4

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->routes:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->routes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;

    iget-object v2, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->method:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->method:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->regex:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->callback:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;

    instance-of p2, p0, Lcom/koushikdutta/async/http/server/RouteMatcher;

    if-eqz p2, :cond_2

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iget-object p2, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->callback:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;

    check-cast p2, Lcom/koushikdutta/async/http/server/RouteMatcher;

    check-cast p2, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;

    invoke-virtual {p2, p1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->route(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/FilteredDataEmitter$1;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    new-instance p1, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    invoke-direct {p1, v2, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(Ljava/util/regex/Matcher;Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;)V

    monitor-exit v0

    return-object p1

    :cond_3
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
