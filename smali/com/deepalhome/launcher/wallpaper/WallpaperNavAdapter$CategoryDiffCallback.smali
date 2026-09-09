.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$CategoryDiffCallback;
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

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/Category;

    check-cast p2, Lcom/deepalhome/launcher/wallpaper/Category;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/wallpaper/Category;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/deepalhome/launcher/wallpaper/Category;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/Category;

    check-cast p2, Lcom/deepalhome/launcher/wallpaper/Category;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/wallpaper/Category;->getId()I

    move-result p0

    invoke-virtual {p2}, Lcom/deepalhome/launcher/wallpaper/Category;->getId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
