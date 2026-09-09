.class public final Lcom/deepalhome/launcher/util/DialogUtil$showDialog$2;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field public final synthetic $binding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

.field public final synthetic $positiveButtonLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/databinding/DialogViewBinding;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/DialogUtil$showDialog$2;->$binding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/DialogUtil$showDialog$2;->$positiveButtonLabel:Ljava/lang/String;

    const-wide/16 p1, 0x3e8

    invoke-direct {p0, p3, p4, p1, p2}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/util/DialogUtil$showDialog$2;->$binding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/DialogUtil$showDialog$2;->$positiveButtonLabel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 2

    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr p1, v0

    long-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/deepalhome/launcher/util/DialogUtil$showDialog$2;->$binding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/DialogUtil$showDialog$2;->$positiveButtonLabel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
