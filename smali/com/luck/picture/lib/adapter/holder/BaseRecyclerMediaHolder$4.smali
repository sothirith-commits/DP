.class public final Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;

.field public final synthetic val$media:Lcom/luck/picture/lib/entity/LocalMedia;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;Lcom/luck/picture/lib/entity/LocalMedia;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$4;->this$0:Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;

    iput-object p2, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$4;->val$media:Lcom/luck/picture/lib/entity/LocalMedia;

    iput p3, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$4;->val$position:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$4;->this$0:Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;

    iget-object v0, p1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->listener:Lcom/luck/picture/lib/PictureSelectorFragment$4;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$4;->val$media:Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object v1, v0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isEnablePreviewImage:Z

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v3, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isEnablePreviewVideo:Z

    if-nez v3, :cond_3

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    if-eq v1, v2, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v3, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isEnablePreviewAudio:Z

    if-nez v3, :cond_3

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    if-ne v1, v2, :cond_6

    :cond_3
    iget-boolean v0, v0, Lcom/luck/picture/lib/entity/LocalMedia;->isMaxSelectEnabledMask:Z

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->listener:Lcom/luck/picture/lib/PictureSelectorFragment$4;

    iget-object p1, p1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    iget-object p1, v0, Lcom/luck/picture/lib/PictureSelectorFragment$4;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    iget-object v0, p1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    invoke-static {}, Lcom/luck/picture/lib/utils/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    iget p0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$4;->val$position:I

    invoke-static {p1, p0, v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$3200(Lcom/luck/picture/lib/PictureSelectorFragment;IZ)V

    goto :goto_0

    :cond_6
    iget-object p0, p1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->btnCheck:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :goto_0
    return-void
.end method
