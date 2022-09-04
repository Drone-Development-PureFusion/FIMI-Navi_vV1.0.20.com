.class public Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
.super Ljava/lang/Object;
.source "DefaultIoFilterChainBuilder.java"

# interfaces
.implements Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;)V
    .locals 2
    .param p1, "filterChain"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filterChain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    .line 85
    return-void
.end method

.method private checkBaseName(Ljava/lang/String;)V
    .locals 3
    .param p1, "baseName"    # Ljava/lang/String;

    .prologue
    .line 531
    if-nez p1, :cond_0

    .line 532
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown filter name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_1
    return-void
.end method

.method private isOrderedMap(Ljava/util/Map;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 415
    .local v8, "mapType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v12, Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 416
    sget-object v12, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v12}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 417
    sget-object v12, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    const-string v13, "{} is an ordered map."

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    :cond_0
    const/4 v12, 0x1

    .line 491
    :goto_0
    return v12

    .line 423
    :cond_1
    sget-object v12, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v12}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 424
    sget-object v12, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    const-string v13, "{} is not a {}"

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    const-class v15, Ljava/util/LinkedHashMap;

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    :cond_2
    move-object v11, v8

    .line 430
    .local v11, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v11, :cond_6

    .line 431
    invoke-virtual {v11}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v13

    array-length v14, v13

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v14, :cond_5

    aget-object v5, v13, v12

    .line 432
    .local v5, "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "OrderedMap"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 433
    sget-object v12, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v12}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 434
    sget-object v12, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    const-string v13, "{} is an ordered map (guessed from that it implements OrderedMap interface.)"

    .line 435
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    .line 434
    invoke-interface {v12, v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 437
    :cond_3
    const/4 v12, 0x1

    goto :goto_0

    .line 431
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 440
    .end local v5    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    goto :goto_1

    .line 443
    :cond_6
    sget-object v12, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v12}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 444
    sget-object v12, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    const-string v13, "{} doesn\'t implement OrderedMap interface."

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    :cond_7
    sget-object v12, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    const-string v13, "Last resort; trying to create a new map instance with a default constructor and test if insertion order is maintained."

    invoke-interface {v12, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 455
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .local v9, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;>;"
    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    .line 464
    .local v10, "rand":Ljava/util/Random;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v2, "expectedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterAdapter;

    invoke-direct {v0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 467
    .local v0, "dummyFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    const/high16 v12, 0x10000

    if-ge v4, v12, :cond_d

    .line 471
    :cond_8
    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, "filterName":Ljava/lang/String;
    invoke-interface {v9, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 474
    invoke-interface {v9, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 479
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 480
    .local v7, "key":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 481
    sget-object v12, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v12}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 482
    sget-object v12, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    const-string v13, "The specified map didn\'t pass the insertion order test after {} tries."

    add-int/lit8 v14, v4, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 456
    .end local v0    # "dummyFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local v2    # "expectedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "filterName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "key":Ljava/lang/Object;
    .end local v9    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;>;"
    .end local v10    # "rand":Ljava/util/Random;
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Ljava/lang/Exception;
    sget-object v12, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v12}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 458
    sget-object v12, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    const-string v13, "Failed to create a new map instance of \'{}\'."

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 460
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 467
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dummyFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    .restart local v2    # "expectedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "filterName":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v9    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;>;"
    .restart local v10    # "rand":Ljava/util/Random;
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 489
    .end local v3    # "filterName":Ljava/lang/String;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d
    sget-object v12, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    const-string v13, "The specified map passed the insertion order test."

    invoke-interface {v12, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 491
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method private register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "e"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .prologue
    .line 541
    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other filter is using the same name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 546
    return-void
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 5
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->checkBaseName(Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 266
    .local v0, "base":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    new-instance v3, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, p3, v4}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, v2, v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .end local v0    # "base":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_1
    monitor-exit p0

    return-void

    .line 262
    .end local v1    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 5
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->checkBaseName(Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 247
    .local v0, "base":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v2

    new-instance v3, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, p3, v4}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, v2, v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    .end local v0    # "base":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_1
    monitor-exit p0

    return-void

    .line 243
    .end local v1    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 222
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V
    .locals 4
    .param p1, "chain"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 495
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 496
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/apache/mina/core/filterchain/IoFilterChain;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    goto :goto_0

    .line 498
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z
    .locals 1
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    .line 158
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    if-nez v0, :cond_0

    .line 159
    const/4 v1, 0x0

    .line 162
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    .line 143
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    if-nez v0, :cond_0

    .line 144
    const/4 v1, 0x0

    .line 147
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    goto :goto_0
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllReversed()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getAll()Ljava/util/List;

    move-result-object v0

    .line 181
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 182
    return-object v0
.end method

.method public getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 127
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 95
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 3
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 110
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 111
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 116
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized remove(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 325
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filterType"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 328
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 329
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 330
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 332
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 336
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filter not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 280
    monitor-enter p0

    if-nez p1, :cond_0

    .line 281
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 284
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 286
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 288
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 292
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown filter name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized remove(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 5
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 302
    monitor-enter p0

    if-nez p1, :cond_0

    .line 303
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 306
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 308
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 309
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 310
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 314
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filter not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized replace(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->checkBaseName(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    .line 342
    .local v0, "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 343
    .local v1, "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    invoke-static {v0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->access$100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-object v1

    .line 340
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;
    .end local v1    # "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized replace(Ljava/lang/Class;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 4
    .param p2, "newFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, "oldFilterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 359
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-static {v0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->access$100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    .line 364
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized replace(Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 4
    .param p1, "oldFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;
    .param p2, "newFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 349
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 350
    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-static {v0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->access$100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 354
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setFilters(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    if-nez p1, :cond_0

    .line 385
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filters"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 388
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->isOrderedMap(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 389
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filters is not an ordered map. Please try "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Ljava/util/LinkedHashMap;

    .line 390
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 393
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 394
    .end local p1    # "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    .local v1, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 395
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 396
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filters contains a null key."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 398
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 399
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filters contains a null value."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    :cond_4
    monitor-enter p0

    .line 404
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->clear()V

    .line 405
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 406
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/filterchain/IoFilter;

    invoke-virtual {p0, v2, v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v3, "{ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const/4 v2, 0x1

    .line 507
    .local v2, "empty":Z
    iget-object v3, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 508
    .local v1, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    if-nez v2, :cond_0

    .line 509
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :goto_1
    const/16 v4, 0x28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 518
    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 511
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 521
    .end local v1    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_1
    if-eqz v2, :cond_2

    .line 522
    const-string v3, "empty"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_2
    const-string v3, " }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
