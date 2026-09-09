.class public abstract Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final cardView:Lcom/google/android/material/card/MaterialCardView;

.field public final coverIv:Landroid/widget/ImageView;

.field public final nameTv:Landroid/widget/TextView;

.field public final sourceTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;->cardView:Lcom/google/android/material/card/MaterialCardView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;->coverIv:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;->nameTv:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;->sourceTv:Landroid/widget/TextView;

    return-void
.end method
