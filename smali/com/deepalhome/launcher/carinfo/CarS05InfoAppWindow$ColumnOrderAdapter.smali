.class public final Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final keys:Ljava/util/List;

.field public final section:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

.field public showCount:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;Ljava/util/ArrayList;I)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->section:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    iput-object p3, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->keys:Ljava/util/List;

    iput p4, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->showCount:I

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->keys:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->showCount:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f06038c

    goto :goto_0

    :cond_0
    const v0, 0x7f06038b

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    instance-of v2, p1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter$DividerViewHolder;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter$DividerViewHolder;

    iget-object p0, p1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter$DividerViewHolder;->dividerLabelTv:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter$ViewHolder;

    iget v2, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->showCount:I

    if-ge p2, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_6

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_6

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->section:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    invoke-virtual {v1, p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getColumnItems(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    iget-object v3, v3, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;->key:Ljava/lang/String;

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    check-cast v2, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget v1, v2, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;->titleRes:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    move-object p2, p0

    :cond_5
    iget-object p0, p1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    iget-object p1, p1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter$ViewHolder;->dragIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_6
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string p0, "parent"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x2

    const/4 v0, 0x0

    if-ne p2, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0e00e9

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter$DividerViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter$DividerViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0e00ea

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter$ViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p1
.end method
