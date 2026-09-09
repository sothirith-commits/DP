.class public final synthetic Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/app/AppCenterView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda8;->f$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda8;->$r8$classId:I

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda8;->f$0:Lcom/deepalhome/launcher/app/AppCenterView;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->$r8$lambda$4vgzsajDRSPH7WIAgsJAHgv9P8o(Lcom/deepalhome/launcher/app/AppCenterView;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->$r8$lambda$pEOPv6O2i7fJBonsl9tz1jRGjhk(Lcom/deepalhome/launcher/app/AppCenterView;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->$r8$lambda$qiAanQfRj3cT7b1_xBC0sa4ETn4(Lcom/deepalhome/launcher/app/AppCenterView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
