.class public final Lcom/luck/picture/lib/adapter/holder/PreviewImageHolder;
.super Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;
.source "SourceFile"


# virtual methods
.method public final loadImage()V
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onClickBackPressed()V
    .locals 2

    new-instance v0, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/16 v1, 0x1d

    invoke-direct {v0, v1, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/photoview/PhotoView;->setOnViewTapListener(Lcom/luck/picture/lib/photoview/OnViewTapListener;)V

    return-void
.end method

.method public final onLongPressDownload(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 2

    new-instance v0, Lcom/luck/picture/lib/adapter/holder/PreviewImageHolder$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/luck/picture/lib/adapter/holder/PreviewImageHolder$2;-><init>(Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;Lcom/luck/picture/lib/entity/LocalMedia;I)V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/photoview/PhotoView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
