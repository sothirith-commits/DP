.class public final Lcom/koushikdutta/async/parser/ByteBufferListParser$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$bb:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/ByteBufferList;I)V
    .locals 0

    iput p2, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;->$r8$classId:I

    iput-object p1, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;->val$bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    iget p1, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;->val$bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, p0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;->val$bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, p0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
