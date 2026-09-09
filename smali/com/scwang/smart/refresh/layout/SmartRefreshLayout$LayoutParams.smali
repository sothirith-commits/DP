.class public final Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public backgroundColor:I

.field public spinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;->backgroundColor:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;->spinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    return-void
.end method
