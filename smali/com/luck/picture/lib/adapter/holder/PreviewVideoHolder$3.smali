.class public final Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;I)V
    .locals 0

    iput p2, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$3;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$3;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$3;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->mPreviewEventListener:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->onBackPressed()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$3;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->startPlay()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
