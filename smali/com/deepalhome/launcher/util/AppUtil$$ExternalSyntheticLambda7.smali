.class public final synthetic Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Cloneable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Cloneable;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Cloneable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    iget v0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "$selectors"

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Cloneable;

    check-cast p0, [Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-static {v4, v3}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :pswitch_0
    check-cast p1, Lcom/deepalhome/launcher/app/App;

    check-cast p2, Lcom/deepalhome/launcher/app/App;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/app/App;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/deepalhome/launcher/app/App;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Cloneable;

    check-cast p0, Ljava/text/Collator;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
