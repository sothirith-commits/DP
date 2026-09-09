.class public final Lcom/petterp/floatingx/view/FxViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final view:Landroid/view/View;

.field private final views:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/petterp/floatingx/view/FxViewHolder;->view:Landroid/view/View;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/petterp/floatingx/view/FxViewHolder;->views:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/view/FxViewHolder;->view:Landroid/view/View;

    return-object p0
.end method

.method public final getView(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/FxViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "No view found with id "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getViewOrNull(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/petterp/floatingx/view/FxViewHolder;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/petterp/floatingx/view/FxViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/petterp/floatingx/view/FxViewHolder;->views:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final setBackgroundColor(II)Lcom/petterp/floatingx/view/FxViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public final setBackgroundResource(II)Lcom/petterp/floatingx/view/FxViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p0
.end method

.method public final setEnabled(IZ)Lcom/petterp/floatingx/view/FxViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-object p0
.end method

.method public final setGone(IZ)Lcom/petterp/floatingx/view/FxViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public final setImageBitMap(ILandroid/graphics/Bitmap;)Lcom/petterp/floatingx/view/FxViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public final setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/petterp/floatingx/view/FxViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public final setImageResource(II)Lcom/petterp/floatingx/view/FxViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public final setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/petterp/floatingx/view/FxViewHolder;
    .locals 1

    const-string v0, "listener"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public final setText(II)Lcom/petterp/floatingx/view/FxViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method public final setText(ILjava/lang/CharSequence;)Lcom/petterp/floatingx/view/FxViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final setTextSize(IF)Lcom/petterp/floatingx/view/FxViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    return-object p0
.end method

.method public final setTextSize(IIF)Lcom/petterp/floatingx/view/FxViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object p0
.end method
