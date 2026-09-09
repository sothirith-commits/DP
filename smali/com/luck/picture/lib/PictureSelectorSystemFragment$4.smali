.class public final Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorSystemFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/PictureSelectorSystemFragment;I)V
    .locals 0

    iput p2, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;->this$0:Lcom/luck/picture/lib/PictureSelectorSystemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;->this$0:Lcom/luck/picture/lib/PictureSelectorSystemFragment;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->buildLocalMedia(Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v1

    iget-object v2, v1, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    iput-object v2, v1, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->dispatchTransformResult()V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onKeyBackFragmentFinish()V

    :goto_2
    return-void

    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;->this$0:Lcom/luck/picture/lib/PictureSelectorSystemFragment;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onKeyBackFragmentFinish()V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->buildLocalMedia(Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object p1

    iget-object v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    iput-object v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->confirmSelect(Lcom/luck/picture/lib/entity/LocalMedia;Z)I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->dispatchTransformResult()V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onKeyBackFragmentFinish()V

    :goto_3
    return-void

    :pswitch_1
    check-cast p1, Landroid/net/Uri;

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;->this$0:Lcom/luck/picture/lib/PictureSelectorSystemFragment;

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onKeyBackFragmentFinish()V

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->buildLocalMedia(Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object p1

    iget-object v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    iput-object v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->confirmSelect(Lcom/luck/picture/lib/entity/LocalMedia;Z)I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->dispatchTransformResult()V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onKeyBackFragmentFinish()V

    :goto_4
    return-void

    :pswitch_2
    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;->this$0:Lcom/luck/picture/lib/PictureSelectorSystemFragment;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->buildLocalMedia(Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v1

    iget-object v2, v1, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    iput-object v2, v1, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->dispatchTransformResult()V

    goto :goto_7

    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onKeyBackFragmentFinish()V

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
