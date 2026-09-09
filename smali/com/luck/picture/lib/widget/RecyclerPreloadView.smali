.class public Lcom/luck/picture/lib/widget/RecyclerPreloadView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field public isEnabledLoadMore:Z

.field public isInTheBottom:Z

.field public mFirstVisiblePosition:I

.field public mLastVisiblePosition:I

.field public onRecyclerViewPreloadListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewPreloadMoreListener;

.field public onRecyclerViewScrollListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollListener;

.field public onRecyclerViewScrollStateListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;

.field public reachBottomRow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isInTheBottom:Z

    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->reachBottomRow:I

    return-void
.end method

.method private setLayoutManagerPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->mFirstVisiblePosition:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->mLastVisiblePosition:I

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->mFirstVisiblePosition:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->mLastVisiblePosition:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getFirstVisiblePosition()I
    .locals 0

    iget p0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->mFirstVisiblePosition:I

    return p0
.end method

.method public getLastVisiblePosition()I
    .locals 0

    iget p0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->mLastVisiblePosition:I

    return p0
.end method

.method public final onScrollStateChanged(I)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setLayoutManagerPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_1
    iget-object v1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollListener;

    if-eqz v1, :cond_3

    check-cast v1, Lcom/luck/picture/lib/PictureSelectorFragment$4;

    iget-object v1, v1, Lcom/luck/picture/lib/PictureSelectorFragment$4;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    iget-object v0, v1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayTimeAxis:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v0, v0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, v1, Lcom/luck/picture/lib/PictureSelectorFragment;->tvCurrentDataTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/luck/picture/lib/PictureSelectorFragment;->tvCurrentDataTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, v1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayTimeAxis:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v0, v0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, v1, Lcom/luck/picture/lib/PictureSelectorFragment;->tvCurrentDataTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollStateListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;

    if-eqz p0, :cond_4

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorFragment$4;

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$4;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    iget-object p0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    return-void
.end method

.method public final onScrolled(II)V
    .locals 7

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setLayoutManagerPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewPreloadListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewPreloadMoreListener;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget v1, p1, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    div-int/2addr v0, v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iget p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    div-int/2addr v1, p1

    iget p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->reachBottomRow:I

    sub-int/2addr v0, p1

    if-lt v1, v0, :cond_1

    iget-boolean p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isInTheBottom:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewPreloadListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewPreloadMoreListener;

    check-cast p1, Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->onRecyclerViewPreloadMore()V

    if-lez p2, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isInTheBottom:Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    iput-boolean v2, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isInTheBottom:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isInTheBottom:Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Adapter is null,Please check it!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollListener;

    if-eqz p1, :cond_7

    check-cast p1, Lcom/luck/picture/lib/PictureSelectorFragment$4;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureSelectorFragment$4;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    iget-object v0, p1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayTimeAxis:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget-object v1, p1, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v1, v1, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_7

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-wide v2, v2, Lcom/luck/picture/lib/entity/LocalMedia;->dateAddedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    iget-object v2, p1, Lcom/luck/picture/lib/PictureSelectorFragment;->tvCurrentDataTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-wide v0, v0, Lcom/luck/picture/lib/entity/LocalMedia;->dateAddedTime:J

    sget-object v3, Lcom/luck/picture/lib/utils/DateUtils;->SF:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_4

    goto :goto_1

    :cond_4
    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v5, :cond_5

    const v0, 0x7f1303aa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    sget-object v4, Lcom/luck/picture/lib/utils/DateUtils;->SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v0, 0x7f1303a9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollStateListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;

    if-eqz p1, :cond_9

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p2, 0x96

    if-ge p1, p2, :cond_8

    iget-object p0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollStateListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorFragment$4;

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$4;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    iget-object p0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollStateListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorFragment$4;

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$4;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    iget-object p0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    :goto_3
    return-void

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "LayoutManager is null,Please check it!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEnabledLoadMore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore:Z

    return-void
.end method

.method public setLastVisiblePosition(I)V
    .locals 0

    iput p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->mLastVisiblePosition:I

    return-void
.end method

.method public setOnRecyclerViewPreloadListener(Lcom/luck/picture/lib/interfaces/OnRecyclerViewPreloadMoreListener;)V
    .locals 0

    iput-object p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewPreloadListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewPreloadMoreListener;

    return-void
.end method

.method public setOnRecyclerViewScrollListener(Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollListener;

    return-void
.end method

.method public setOnRecyclerViewScrollStateListener(Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollStateListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;

    return-void
.end method

.method public setReachBottomRow(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->reachBottomRow:I

    return-void
.end method
