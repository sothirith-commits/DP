.class public final Lcom/luck/picture/lib/dialog/AlbumListPopWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field public isDismiss:Z

.field public final mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

.field public final windMask:Landroid/view/View;

.field public final windowMaxHeight:I

.field public windowStatusListener:Lcom/luck/picture/lib/PictureSelectorFragment$4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V
    .locals 5

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->isDismiss:Z

    iput-object p2, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e00e4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const v0, 0x7f140146

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    invoke-static {p1}, Lcom/luck/picture/lib/utils/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    int-to-double v1, p1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v1, v3

    double-to-int p1, v1

    iput p1, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->windowMaxHeight:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0b022e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0b04c9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->windMask:Landroid/view/View;

    iget-object p1, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/luck/picture/lib/decoration/WrapContentLinearLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    invoke-direct {p1, p2}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;-><init>(Lcom/luck/picture/lib/config/SelectorConfig;)V

    iput-object p1, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    iget-object p2, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->windMask:Landroid/view/View;

    new-instance p2, Landroidx/appcompat/widget/Toolbar$4;

    const/16 v0, 0x8

    invoke-direct {p2, v0, p0}, Landroidx/appcompat/widget/Toolbar$4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0b04c8

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/luck/picture/lib/dialog/AlbumListPopWindow$2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic access$001(Lcom/luck/picture/lib/dialog/AlbumListPopWindow;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final bindAlbumData(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->albumList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x8

    if-le p1, v1, :cond_0

    iget p0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->windowMaxHeight:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    :goto_0
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public final dismiss()V
    .locals 3

    iget-boolean v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->isDismiss:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->windMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->windowStatusListener:Lcom/luck/picture/lib/PictureSelectorFragment$4;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorFragment$4;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    iget-object v1, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/TitleBar;->getImageArrow()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/luck/picture/lib/utils/AnimUtils;->rotateArrow(Landroid/widget/ImageView;Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->isDismiss:Z

    iget-object v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->windMask:Landroid/view/View;

    new-instance v1, Lme/wcy/lrcview/LrcView$5;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lme/wcy/lrcview/LrcView$5;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getFolder()Lcom/luck/picture/lib/entity/LocalMediaFolder;
    .locals 1

    iget-object v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->getAlbumList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->getAlbumList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->getAlbumList()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final showAsDropDown(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->getAlbumList()Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->getAlbumList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->isDismiss:Z

    iget-object v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->windowStatusListener:Lcom/luck/picture/lib/PictureSelectorFragment$4;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorFragment$4;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    iget-object v2, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/TitleBar;->getImageArrow()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/luck/picture/lib/utils/AnimUtils;->rotateArrow(Landroid/widget/ImageView;Z)V

    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->windMask:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->getAlbumList()Ljava/util/ArrayList;

    move-result-object v0

    move v2, p1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    iput-boolean p1, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isSelectTag:Z

    iget-object v4, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    move v4, p1

    :goto_1
    iget-object v5, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v6, v5, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-virtual {v5}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lcom/luck/picture/lib/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-wide v5, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iput-boolean v1, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isSelectTag:Z

    iget-object v3, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
