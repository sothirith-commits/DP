.class public final Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final cardView:Landroidx/cardview/widget/CardView;

.field public currentBoundIcon:Lcom/deepalhome/launcher/floating/CachedIcon;

.field public final currentIndicator:Landroid/widget/ImageView;

.field public final gifBadge:Landroid/widget/TextView;

.field public final iconIv:Landroid/widget/ImageView;

.field public loadToken:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/floating/IconLibraryAdapter;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/floating/IconLibraryAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->this$0:Lcom/deepalhome/launcher/floating/IconLibraryAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b00f2

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0b02e6

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->iconIv:Landroid/widget/ImageView;

    const p1, 0x7f0b0140

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->currentIndicator:Landroid/widget/ImageView;

    const p1, 0x7f0b0256

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->gifBadge:Landroid/widget/TextView;

    return-void
.end method
