.class public final Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;

.field public static final functionPanelTouchFeedbackOptOutTypes:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->VOLUME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->functionPanelTouchFeedbackOptOutTypes:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static supportsSharedTouchFeedback(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
