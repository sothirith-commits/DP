.class public final synthetic Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string p1, "this$0"

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    iget p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->Companion:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->scheduleMenuAutoCollapse()V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setCarS05EnableSr(Z)V

    invoke-static {v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateCarSrState$default(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->onSettingChanged()V

    return-void

    :pswitch_0
    sget-object p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->Companion:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->scheduleMenuAutoCollapse()V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setCarS05ShowSinceCharged(Z)V

    invoke-virtual {v0, p2}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->applySinceChargedVisibility(Z)V

    return-void

    :pswitch_1
    sget-object p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->Companion:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->scheduleMenuAutoCollapse()V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setCarS05ShowValueUnit(Z)V

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindS05Info(Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
