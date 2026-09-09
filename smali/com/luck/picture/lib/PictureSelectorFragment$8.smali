.class public final Lcom/luck/picture/lib/PictureSelectorFragment$8;
.super Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;I)V
    .locals 0

    iput p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment$8;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$8;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckOriginalChange()V
    .locals 1

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$8;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->sendSelectedOriginalChangeEvent()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$8;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->sendSelectedOriginalChangeEvent()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onEditImage()V
    .locals 1

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$8;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onFirstCheckOriginalSelectedChange()V
    .locals 2

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$8;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->confirmSelect(Lcom/luck/picture/lib/entity/LocalMedia;Z)I

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreview()V
    .locals 2

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$8;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-static {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$3200(Lcom/luck/picture/lib/PictureSelectorFragment;IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
