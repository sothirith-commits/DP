.class public final synthetic Lcom/koushikdutta/async/AsyncServer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/koushikdutta/async/SelectorWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/SelectorWrapper;I)V
    .locals 0

    iput p2, p0, Lcom/koushikdutta/async/AsyncServer$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$$ExternalSyntheticLambda1;->f$0:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/AsyncServer$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/koushikdutta/async/AsyncServer$$ExternalSyntheticLambda1;->f$0:Lcom/koushikdutta/async/SelectorWrapper;

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/SelectorWrapper;->wakeupOnce()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/koushikdutta/async/SelectorWrapper;->wakeupOnce()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
