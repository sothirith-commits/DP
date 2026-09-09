.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $afterReveal:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $requestId:I

.field final synthetic $type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperType;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;->$requestId:I

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;->$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;->$type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    iput-object p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;->$afterReveal:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-static {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$clearRunningTransitionState(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;->$requestId:I

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-static {v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$getWallpaperRequestId$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;->$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;->$type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$applySettledTransitionState(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;->$afterReveal:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
