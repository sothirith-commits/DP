.class public final synthetic Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->handleAliasValue(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    const-string v1, "$alias"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->handleAliasValue(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    const-string v1, "$alias"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->handleAliasValue(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
