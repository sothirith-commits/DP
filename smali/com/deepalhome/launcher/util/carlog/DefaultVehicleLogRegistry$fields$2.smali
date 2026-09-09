.class public final Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry$fields$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry$fields$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry$fields$2;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry$fields$2;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry$fields$2;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistry$fields$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->FIELDS$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
