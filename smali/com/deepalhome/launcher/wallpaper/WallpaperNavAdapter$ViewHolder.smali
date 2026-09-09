.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final indicatorView:Landroid/view/View;

.field public final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;

.field public final titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b02fc

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;->indicatorView:Landroid/view/View;

    const p1, 0x7f0b05e7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final updateSelectionState(I)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;

    iget v2, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;->selectedPosition:I

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    iget-boolean v2, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;->isNight:Z

    if-eqz v2, :cond_1

    const v2, 0x7f060259

    goto :goto_1

    :cond_1
    const v2, 0x7f060258

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-boolean v1, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;->isNight:Z

    if-eqz v1, :cond_2

    const v1, 0x7f06038c

    goto :goto_2

    :cond_2
    const v1, 0x7f06038b

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x4

    :goto_3
    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;->indicatorView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
