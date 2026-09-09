.class public interface abstract Lcom/deepalhome/launcher/http/DailyWallpaperApi;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAllWallpapers()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/deepalhome/SyncPic/-/git/raw/main/docs/api/v1/all.json"
    .end annotation
.end method
