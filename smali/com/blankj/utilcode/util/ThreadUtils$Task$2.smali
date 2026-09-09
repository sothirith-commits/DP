.class public final Lcom/blankj/utilcode/util/ThreadUtils$Task$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/blankj/utilcode/util/ThreadUtils$Task;

.field public final synthetic val$result:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;->$r8$classId:I

    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;->this$0:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    iput-object p2, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;->val$result:Ljava/lang/Object;

    iget-object p0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;->this$0:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->onSuccess(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->onDone()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;->this$0:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    iget-object p0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
