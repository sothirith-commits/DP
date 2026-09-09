.class public final Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final binding:Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;

.field public final synthetic this$0:Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter$ViewHolder;->this$0:Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;

    iget-object p1, p2, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter$ViewHolder;->binding:Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;

    return-void
.end method
