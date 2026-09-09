.class public final synthetic Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# virtual methods
.method public final binderDied()V
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cleanupPolymericConnection(Z)V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->scheduleReconnect()V

    return-void
.end method
