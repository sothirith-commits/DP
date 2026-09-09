.class public final Lcom/deepalhome/mitemp/MiTemp$syncFromRepositoryState$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/mitemp/MiTemp$syncFromRepositoryState$2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/mitemp/MiTemp$syncFromRepositoryState$2$1;

    invoke-direct {v0}, Lcom/deepalhome/mitemp/MiTemp$syncFromRepositoryState$2$1;-><init>()V

    sput-object v0, Lcom/deepalhome/mitemp/MiTemp$syncFromRepositoryState$2$1;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp$syncFromRepositoryState$2$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/mitemp/MiTempDevice;

    const-string p0, "it"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/mitemp/MiConnectionStatus;->IDLE:Lcom/deepalhome/mitemp/MiConnectionStatus;

    const/4 v0, 0x0

    const/16 v1, 0x5f

    invoke-static {p1, v0, p0, v1}, Lcom/deepalhome/mitemp/MiTempDevice;->copy$default(Lcom/deepalhome/mitemp/MiTempDevice;Ljava/lang/String;Lcom/deepalhome/mitemp/MiConnectionStatus;I)Lcom/deepalhome/mitemp/MiTempDevice;

    move-result-object p0

    return-object p0
.end method
