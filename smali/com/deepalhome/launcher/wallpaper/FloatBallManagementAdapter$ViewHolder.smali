.class public final Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final applyBtn:Landroid/view/View;

.field public final builtinBadge:Landroid/widget/TextView;

.field public final checkboxIv:Landroid/widget/ImageView;

.field public final deleteBtn:Landroid/view/View;

.field public final gifBadge:Landroid/widget/TextView;

.field public final iconIv:Landroid/widget/ImageView;

.field public final infoTv:Landroid/widget/TextView;

.field public final nameTv:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b02e6

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->iconIv:Landroid/widget/ImageView;

    const p1, 0x7f0b00ff

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->checkboxIv:Landroid/widget/ImageView;

    const p1, 0x7f0b0256

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->gifBadge:Landroid/widget/TextView;

    const p1, 0x7f0b00e3

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->builtinBadge:Landroid/widget/TextView;

    const p1, 0x7f0b03e6

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    const p1, 0x7f0b02fe

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->infoTv:Landroid/widget/TextView;

    const p1, 0x7f0b0096

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->applyBtn:Landroid/view/View;

    const p1, 0x7f0b016d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder;->deleteBtn:Landroid/view/View;

    return-void
.end method
