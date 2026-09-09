.class public final Lcom/luck/picture/lib/PictureSelectorFragment$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/PictureSelectorFragment;I)V
    .locals 0

    iput p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment$15;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$15;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$15;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$15;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->loadMoreMediaData()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$15;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->currentPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    iget p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->currentPosition:I

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setLastVisiblePosition(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
