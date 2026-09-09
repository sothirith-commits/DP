.class public abstract Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final emptyView:Landroid/widget/TextView;

.field public final localImageBtn:Lcom/google/android/material/button/MaterialButton;

.field public final subtitleTv:Landroid/widget/TextView;

.field public final titleTv:Landroid/widget/TextView;

.field public final wallpaperRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;->emptyView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;->localImageBtn:Lcom/google/android/material/button/MaterialButton;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;->subtitleTv:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;->titleTv:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerDialogBinding;->wallpaperRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
