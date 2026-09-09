.class public final Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$setupRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final synthetic $spacing:I

.field public final synthetic $spanCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$setupRecyclerView$1;->$spanCount:I

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$setupRecyclerView$1;->$spacing:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "view"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "parent"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "state"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    iget p3, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$setupRecyclerView$1;->$spanCount:I

    rem-int p4, p2, p3

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$setupRecyclerView$1;->$spacing:I

    mul-int v0, p4, p0

    div-int/2addr v0, p3

    sub-int v0, p0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, p0

    div-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    if-ge p2, p3, :cond_1

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    return-void
.end method
