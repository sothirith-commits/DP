.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$fetchCategoriesFromServer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$fetchCategoriesFromServer$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$fetchCategoriesFromServer$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$fetchCategoriesFromServer$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string p0, "call"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "t"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const-string v0, "call"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "t"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$fetchCategoriesFromServer$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;

    invoke-static {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->access$onLoadFailed(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$fetchCategoriesFromServer$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "call"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "response"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p2, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lretrofit2/Response;->body:Ljava/lang/Object;

    check-cast p1, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$fetchCategoriesFromServer$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->access$parseCategories(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/Category;->Companion:Lcom/deepalhome/launcher/wallpaper/Category$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/wallpaper/Category$Companion;->saveToCache(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "call"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "response"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p2, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$fetchCategoriesFromServer$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;

    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->access$onLoadFailed(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;)V

    goto :goto_1

    :cond_2
    iget-object p1, p2, Lretrofit2/Response;->body:Ljava/lang/Object;

    check-cast p1, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->access$parseCategories(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_3

    sget-object p2, Lcom/deepalhome/launcher/wallpaper/Category;->Companion:Lcom/deepalhome/launcher/wallpaper/Category$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/Category$Companion;->saveToCache(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->showCategories(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->access$onLoadFailed(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
