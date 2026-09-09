.class public final synthetic Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda12;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    const p1, 0x7f0b05cf

    const v0, 0x7f0b05cd

    const/4 v1, 0x0

    const v2, 0x7f0b05cb

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget p0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda12;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    const p0, 0x7f0b0296

    if-ne p2, p0, :cond_0

    move v3, v4

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setHudLyricsLineCount(I)V

    sget-object p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->applySettingsToView()V

    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    if-ne p2, v2, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/theme/UIModeManager;->setType(I)V

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/deepalhome/launcher/theme/UIModeManager;->setType(I)V

    goto :goto_0

    :cond_2
    if-ne p2, p1, :cond_3

    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/theme/UIModeManager;->setType(I)V

    :cond_3
    :goto_0
    return-void

    :pswitch_1
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    if-ne p2, v2, :cond_4

    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/theme/UIModeManager;->setType(I)V

    goto :goto_1

    :cond_4
    if-ne p2, v0, :cond_5

    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/deepalhome/launcher/theme/UIModeManager;->setType(I)V

    goto :goto_1

    :cond_5
    if-ne p2, p1, :cond_6

    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/theme/UIModeManager;->setType(I)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
