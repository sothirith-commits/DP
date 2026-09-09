.class public final synthetic Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/pip/PipAppWindow;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILcom/deepalhome/launcher/pip/PipAppWindow;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda2;->f$1:I

    iput-object p2, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/pip/PipAppWindow;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/pip/PipAppWindow;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/pip/PipAppWindow;

    iput p2, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
