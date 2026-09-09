.class public final Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$s05GearListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$s05GearListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    check-cast p2, Ljava/util/Set;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "changedFields"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$s05GearListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->access$supportsParkedAccessRestriction(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->GEAR_MODE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$s05GearListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->access$render(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
