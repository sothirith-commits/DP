.class public final Lcom/umeng/analytics/pro/br$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/analytics/pro/br$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    if-nez p2, :cond_2

    return p0

    :cond_2
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_8

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    sget-object v2, Lcom/umeng/analytics/pro/br;->a:Lcom/umeng/analytics/pro/br$a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    goto :goto_0

    :cond_3
    if-ge v3, v2, :cond_4

    move v1, p0

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    if-eqz v1, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    sget-object v2, Lcom/umeng/analytics/pro/br;->a:Lcom/umeng/analytics/pro/br$a;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/umeng/analytics/pro/br$a;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    add-int/2addr v1, p0

    goto :goto_1

    :cond_7
    :goto_2
    return v0

    :cond_8
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_e

    check-cast p1, Ljava/util/Set;

    check-cast p2, Ljava/util/Set;

    sget-object v2, Lcom/umeng/analytics/pro/br;->a:Lcom/umeng/analytics/pro/br$a;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    move p0, v1

    goto :goto_3

    :cond_9
    if-ge v3, v2, :cond_a

    goto :goto_3

    :cond_a
    move p0, v0

    :goto_3
    if-eqz p0, :cond_b

    move v0, p0

    goto :goto_4

    :cond_b
    new-instance p0, Ljava/util/TreeSet;

    sget-object v1, Lcom/umeng/analytics/pro/br;->a:Lcom/umeng/analytics/pro/br$a;

    invoke-direct {p0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/umeng/analytics/pro/br$a;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-eqz p2, :cond_c

    move v0, p2

    :cond_d
    :goto_4
    return v0

    :cond_e
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_15

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    sget-object v2, Lcom/umeng/analytics/pro/br;->a:Lcom/umeng/analytics/pro/br$a;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    move p0, v1

    goto :goto_5

    :cond_f
    if-ge v3, v2, :cond_10

    goto :goto_5

    :cond_10
    move p0, v0

    :goto_5
    if-eqz p0, :cond_11

    move v0, p0

    goto :goto_6

    :cond_11
    new-instance p0, Ljava/util/TreeMap;

    sget-object v1, Lcom/umeng/analytics/pro/br;->a:Lcom/umeng/analytics/pro/br$a;

    invoke-direct {p0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p1, p2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/umeng/analytics/pro/br$a;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_13

    move v0, v3

    goto :goto_6

    :cond_13
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/umeng/analytics/pro/br$a;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-eqz p2, :cond_12

    move v0, p2

    :cond_14
    :goto_6
    return v0

    :cond_15
    instance-of v2, p1, [B

    if-eqz v2, :cond_1d

    check-cast p1, [B

    check-cast p2, [B

    array-length v2, p1

    array-length v3, p2

    sget-object v4, Lcom/umeng/analytics/pro/br;->a:Lcom/umeng/analytics/pro/br$a;

    if-ge v2, v3, :cond_16

    move v2, v1

    goto :goto_7

    :cond_16
    if-ge v3, v2, :cond_17

    move v2, p0

    goto :goto_7

    :cond_17
    move v2, v0

    :goto_7
    if-eqz v2, :cond_18

    move v0, v2

    goto :goto_a

    :cond_18
    move v2, v0

    :goto_8
    array-length v3, p1

    if-ge v2, v3, :cond_1c

    aget-byte v3, p1, v2

    aget-byte v4, p2, v2

    if-ge v3, v4, :cond_19

    move v3, v1

    goto :goto_9

    :cond_19
    if-ge v4, v3, :cond_1a

    move v3, p0

    goto :goto_9

    :cond_1a
    move v3, v0

    :goto_9
    if-eqz v3, :cond_1b

    move v0, v3

    goto :goto_a

    :cond_1b
    add-int/2addr v2, p0

    goto :goto_8

    :cond_1c
    :goto_a
    return v0

    :cond_1d
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    sget-object p0, Lcom/umeng/analytics/pro/br;->a:Lcom/umeng/analytics/pro/br$a;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
