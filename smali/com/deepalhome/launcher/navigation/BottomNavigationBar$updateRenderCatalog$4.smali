.class public final Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$4;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$4;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$4;->INSTANCE:Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$4;

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
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/navigation/model/GridItem;

    const-string p0, "item"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/deepalhome/launcher/navigation/model/GridItem;->payload:Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;->packageName:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/AppUtil;->start(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
