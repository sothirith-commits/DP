.class public final Lcom/luck/picture/lib/PictureSelectorFragment$12;
.super Lcom/luck/picture/lib/interfaces/OnQueryDataResultListener;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/PictureSelectorFragment;I)V
    .locals 0

    iput p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment$12;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$12;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-direct {p0}, Lcom/luck/picture/lib/interfaces/OnQueryDataResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/util/ArrayList;Z)V
    .locals 4

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$12;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$12;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setEnabledLoadMore(Z)V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    iget-boolean p2, p2, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore:Z

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isCameraCallback:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/luck/picture/lib/PictureSelectorFragment;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v2, v2, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    iput-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isCameraCallback:Z

    goto :goto_4

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object p2, p2, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v0, v0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->onRecyclerViewPreloadMore()V

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xa

    if-ge p1, p2, :cond_6

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p2

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onScrolled(II)V

    goto :goto_7

    :goto_6
    iput-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isCameraCallback:Z

    throw p1

    :cond_6
    :goto_7
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$12;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorFragment;->handleFirstPageMedia(Ljava/util/ArrayList;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
