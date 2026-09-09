.class public final Landroidx/activity/ComponentActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;

.field public final synthetic val$requestCode:I

.field public final synthetic val$synchronousResult:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/activity/ComponentActivity$1$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/ComponentActivity$1$1;->val$synchronousResult:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/activity/ComponentActivity$1$1;->this$1:Ljava/lang/Object;

    iput p3, p0, Landroidx/activity/ComponentActivity$1$1;->val$requestCode:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity$1;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroidx/activity/ComponentActivity$1$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/activity/ComponentActivity$1$1;->this$1:Ljava/lang/Object;

    iput p2, p0, Landroidx/activity/ComponentActivity$1$1;->val$requestCode:I

    iput-object p3, p0, Landroidx/activity/ComponentActivity$1$1;->val$synchronousResult:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/activity/ComponentActivity$1$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/ComponentActivity$1$1;->this$1:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/activity/ComponentActivity$1$1;->val$synchronousResult:Ljava/lang/Object;

    iput p3, p0, Landroidx/activity/ComponentActivity$1$1;->val$requestCode:I

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadTask;ILjava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/activity/ComponentActivity$1$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/ComponentActivity$1$1;->val$synchronousResult:Ljava/lang/Object;

    iput p2, p0, Landroidx/activity/ComponentActivity$1$1;->val$requestCode:I

    iput-object p3, p0, Landroidx/activity/ComponentActivity$1$1;->this$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/activity/ComponentActivity$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/activity/ComponentActivity$1$1;->val$synchronousResult:Ljava/lang/Object;

    check-cast v0, Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v1, v0, Lcom/liulishuo/okdownload/DownloadTask;->listener:Lcom/liulishuo/okdownload/DownloadListener;

    iget v2, p0, Landroidx/activity/ComponentActivity$1$1;->val$requestCode:I

    iget-object p0, p0, Landroidx/activity/ComponentActivity$1$1;->this$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Exception;

    invoke-interface {v1, v0, v2, p0}, Lcom/liulishuo/okdownload/DownloadListener;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/lang/Exception;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity$1$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Landroidx/activity/ComponentActivity$1$1;->val$synchronousResult:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget p0, p0, Landroidx/activity/ComponentActivity$1$1;->val$requestCode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$1$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Typeface;

    iget v1, p0, Landroidx/activity/ComponentActivity$1$1;->val$requestCode:I

    iget-object p0, p0, Landroidx/activity/ComponentActivity$1$1;->val$synchronousResult:Ljava/lang/Object;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    iget-object v2, p0, Landroidx/activity/ComponentActivity$1$1;->val$synchronousResult:Ljava/lang/Object;

    check-cast v2, Landroid/content/IntentSender$SendIntentException;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/ComponentActivity$1$1;->this$1:Ljava/lang/Object;

    check-cast v1, Landroidx/activity/ComponentActivity$1;

    iget p0, p0, Landroidx/activity/ComponentActivity$1$1;->val$requestCode:I

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroidx/activity/result/ActivityResultRegistry;->dispatchResult(IILandroid/content/Intent;)Z

    return-void

    :pswitch_3
    iget-object v0, p0, Landroidx/activity/ComponentActivity$1$1;->val$synchronousResult:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    iget-object v0, v0, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;->value:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/activity/ComponentActivity$1$1;->this$1:Ljava/lang/Object;

    check-cast v1, Landroidx/activity/ComponentActivity$1;

    iget-object v2, v1, Landroidx/activity/result/ActivityResultRegistry;->mRcToKey:Ljava/util/HashMap;

    iget p0, p0, Landroidx/activity/ComponentActivity$1$1;->val$requestCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Landroidx/activity/result/ActivityResultRegistry;->mKeyToCallback:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;

    if-eqz v2, :cond_2

    iget-object v2, v2, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->mCallback:Landroidx/activity/result/ActivityResultCallback;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Landroidx/activity/result/ActivityResultRegistry;->mLaunchedKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v2, v0}, Landroidx/activity/result/ActivityResultCallback;->onActivityResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, v1, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
