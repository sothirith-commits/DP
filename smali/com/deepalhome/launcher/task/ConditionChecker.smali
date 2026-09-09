.class public final Lcom/deepalhome/launcher/task/ConditionChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/ConditionChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/task/ConditionChecker;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/ConditionChecker;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/ConditionChecker;->INSTANCE:Lcom/deepalhome/launcher/task/ConditionChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native getCurrentContext()Lcom/deepalhome/launcher/task/model/ConditionContext;
.end method
