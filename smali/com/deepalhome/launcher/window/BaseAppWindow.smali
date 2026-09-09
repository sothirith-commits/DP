.class public abstract Lcom/deepalhome/launcher/window/BaseAppWindow;
.super Lcom/deepalhome/launcher/view/BaseView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/deepalhome/launcher/view/BaseView<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private isDragging:Z


# virtual methods
.method public drawDragSnapshot(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public endDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/window/BaseAppWindow;->isDragging:Z

    return-void
.end method

.method public final isDragging()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/window/BaseAppWindow;->isDragging:Z

    return p0
.end method

.method public final setDragging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/window/BaseAppWindow;->isDragging:Z

    return-void
.end method

.method public startDragging()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/window/BaseAppWindow;->isDragging:Z

    return-void
.end method

.method public swapped()V
    .locals 0

    return-void
.end method
