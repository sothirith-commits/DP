.class public interface abstract Lcom/deepalhome/launcher/http/Api;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getWallpaperCategoryList()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/index.php?c=WallPaper&a=getAllCategories"
    .end annotation
.end method

.method public abstract getWallpaperList(III)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "cid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "start"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "count"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lretrofit2/Call<",
            "Lcom/deepalhome/launcher/http/Wallpaper360Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/index.php?c=WallPaper&a=getAppsByCategory"
    .end annotation
.end method
