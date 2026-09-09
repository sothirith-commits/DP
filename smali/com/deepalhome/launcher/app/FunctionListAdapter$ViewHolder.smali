.class public final Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public boundPreviewItem:Lcom/deepalhome/launcher/navigation/model/GridItem;

.field public boundType:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public boundView:Landroid/view/View;

.field public final container:Landroid/widget/LinearLayout;

.field public final contentContainer:Landroid/widget/LinearLayout;

.field public final functionName:Landroid/widget/TextView;

.field public final previewContainer:Landroid/widget/FrameLayout;

.field public final previewTouchOverlay:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->container:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->contentContainer:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewContainer:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->previewTouchOverlay:Landroid/view/View;

    iput-object p5, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->functionName:Landroid/widget/TextView;

    return-void
.end method
