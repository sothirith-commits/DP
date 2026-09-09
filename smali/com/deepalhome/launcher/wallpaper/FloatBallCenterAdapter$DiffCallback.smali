.class public final Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$DiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/FloatBallItem;

    check-cast p2, Lcom/deepalhome/launcher/wallpaper/FloatBallItem;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/FloatBallItem;

    check-cast p2, Lcom/deepalhome/launcher/wallpaper/FloatBallItem;

    iget-object p0, p1, Lcom/deepalhome/launcher/wallpaper/FloatBallItem;->url:Ljava/lang/String;

    iget-object p1, p2, Lcom/deepalhome/launcher/wallpaper/FloatBallItem;->url:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
