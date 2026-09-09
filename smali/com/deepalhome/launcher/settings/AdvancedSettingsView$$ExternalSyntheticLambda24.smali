.class public final synthetic Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;ILjava/util/LinkedHashMap;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda24;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda24;->f$1:I

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda24;->f$2:Ljava/util/Map;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda24;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    sget p1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    const-string p1, "$isUpdating"

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda24;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$styleToButton"

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda24;->f$2:Ljava/util/Map;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$strategyButtons"

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda24;->f$3:Ljava/util/List;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda24;->f$1:I

    invoke-static {v1, v0, v2, p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->initAmapRouteStrategy$selectStyle(Ljava/util/Map;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;I)V

    :cond_1
    :goto_0
    return-void
.end method
