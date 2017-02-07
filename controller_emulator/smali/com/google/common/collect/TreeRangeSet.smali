.class public Lcom/google/common/collect/TreeRangeSet;
.super Lcom/google/common/collect/AbstractRangeSet;
.source "TreeRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeRangeSet$SubRangeSet;,
        Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;,
        Lcom/google/common/collect/TreeRangeSet$Complement;,
        Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;,
        Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;,
        Lcom/google/common/collect/TreeRangeSet$AsRanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable",
        "<*>;>",
        "Lcom/google/common/collect/AbstractRangeSet",
        "<TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient asDescendingSetOfRanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private transient asRanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private transient complement:Lcom/google/common/collect/RangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;"
        }
    .end annotation
.end field

.field final rangesByLowerBound:Ljava/util/NavigableMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "rangesByLowerCut":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractRangeSet;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/NavigableMap;Lcom/google/common/collect/TreeRangeSet$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/NavigableMap;
    .param p2, "x1"    # Lcom/google/common/collect/TreeRangeSet$1;

    .prologue
    .line 43
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeRangeSet;
    .param p1, "x1"    # Lcom/google/common/collect/Range;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeSet;->rangeEnclosing(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/google/common/collect/TreeRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/collect/TreeRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/google/common/collect/TreeRangeSet;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/TreeRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)",
            "Lcom/google/common/collect/TreeRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "rangeSet":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-static {}, Lcom/google/common/collect/TreeRangeSet;->create()Lcom/google/common/collect/TreeRangeSet;

    move-result-object v0

    .line 60
    .local v0, "result":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/TreeRangeSet;->addAll(Lcom/google/common/collect/RangeSet;)V

    .line 61
    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)",
            "Lcom/google/common/collect/TreeRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "ranges":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/collect/Range<TC;>;>;"
    invoke-static {}, Lcom/google/common/collect/TreeRangeSet;->create()Lcom/google/common/collect/TreeRangeSet;

    move-result-object v0

    .line 75
    .local v0, "result":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/TreeRangeSet;->addAll(Ljava/lang/Iterable;)V

    .line 76
    return-object v0
.end method

.method private rangeEnclosing(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 163
    .local v0, "floorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 163
    :goto_0
    return-object v1

    .line 165
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private replaceRangeWithSameLowerBound(Lcom/google/common/collect/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v0, v1, p1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "rangeToAdd":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 223
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 189
    .local v2, "lbToAdd":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 191
    .local v5, "ubToAdd":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v6, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 192
    .local v0, "entryBelowLB":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_2

    .line 194
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Range;

    .line 195
    .local v3, "rangeBelowLB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v6, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v6, v2}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v6

    if-ltz v6, :cond_2

    .line 197
    iget-object v6, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v6, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 199
    iget-object v5, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 205
    :cond_1
    iget-object v2, v3, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 209
    .end local v3    # "rangeBelowLB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_2
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v6, v5}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 210
    .local v1, "entryBelowUB":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v1, :cond_3

    .line 212
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/Range;

    .line 213
    .local v4, "rangeBelowUB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v6, v4, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v6, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v6

    if-ltz v6, :cond_3

    .line 215
    iget-object v5, v4, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 220
    .end local v4    # "rangeBelowUB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_3
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v6, v2, v5}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/SortedMap;->clear()V

    .line 222
    invoke-static {v2, v5}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/common/collect/TreeRangeSet;->replaceRangeWithSameLowerBound(Lcom/google/common/collect/Range;)V

    goto :goto_0
.end method

.method public bridge synthetic addAll(Lcom/google/common/collect/RangeSet;)V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->addAll(Lcom/google/common/collect/RangeSet;)V

    return-void
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->addAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method public asDescendingSetOfRanges()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->asDescendingSetOfRanges:Ljava/util/Set;

    .line 95
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/collect/Range<TC;>;>;"
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$AsRanges;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/collect/Range<TC;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeSet$AsRanges;-><init>(Lcom/google/common/collect/TreeRangeSet;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->asDescendingSetOfRanges:Ljava/util/Set;

    .line 95
    :cond_0
    return-object v0
.end method

.method public asRanges()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->asRanges:Ljava/util/Set;

    .line 89
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/collect/Range<TC;>;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/TreeRangeSet$AsRanges;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/collect/Range<TC;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeSet$AsRanges;-><init>(Lcom/google/common/collect/TreeRangeSet;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->asRanges:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractRangeSet;->clear()V

    return-void
.end method

.method public complement()Lcom/google/common/collect/RangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->complement:Lcom/google/common/collect/RangeSet;

    .line 281
    .local v0, "result":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/TreeRangeSet$Complement;

    .end local v0    # "result":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeSet$Complement;-><init>(Lcom/google/common/collect/TreeRangeSet;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->complement:Lcom/google/common/collect/RangeSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public encloses(Lcom/google/common/collect/Range;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 156
    .local v0, "floorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic enclosesAll(Lcom/google/common/collect/RangeSet;)Z
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->enclosesAll(Lcom/google/common/collect/RangeSet;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic enclosesAll(Ljava/lang/Iterable;)Z
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->enclosesAll(Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public intersects(Lcom/google/common/collect/Range;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    const/4 v3, 0x1

    .line 139
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v4, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v2, v4}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 141
    .local v0, "ceilingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    :goto_0
    return v3

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v4, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v2, v4}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 147
    .local v1, "priorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v1, :cond_1

    .line 148
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    move v3, v2

    .line 147
    goto :goto_0

    .line 149
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractRangeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 129
    .local v0, "floorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 133
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "rangeToRemove":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v4, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v5, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v4, v5}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 237
    .local v0, "entryBelowLB":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_2

    .line 239
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    .line 240
    .local v2, "rangeBelowLB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v4, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v5, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 242
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 243
    invoke-virtual {v4, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 245
    iget-object v4, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v5, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 246
    invoke-static {v4, v5}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v4

    .line 245
    invoke-direct {p0, v4}, Lcom/google/common/collect/TreeRangeSet;->replaceRangeWithSameLowerBound(Lcom/google/common/collect/Range;)V

    .line 248
    :cond_1
    iget-object v4, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v5, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 249
    invoke-static {v4, v5}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v4

    .line 248
    invoke-direct {p0, v4}, Lcom/google/common/collect/TreeRangeSet;->replaceRangeWithSameLowerBound(Lcom/google/common/collect/Range;)V

    .line 253
    .end local v2    # "rangeBelowLB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_2
    iget-object v4, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-interface {v4, v5}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 254
    .local v1, "entryBelowUB":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v1, :cond_3

    .line 256
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Range;

    .line 257
    .local v3, "rangeBelowUB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 258
    invoke-virtual {v4, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 260
    iget-object v4, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v5, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 261
    invoke-static {v4, v5}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v4

    .line 260
    invoke-direct {p0, v4}, Lcom/google/common/collect/TreeRangeSet;->replaceRangeWithSameLowerBound(Lcom/google/common/collect/Range;)V

    .line 265
    .end local v3    # "rangeBelowUB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_3
    iget-object v4, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v5, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v6, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-interface {v4, v5, v6}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/SortedMap;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic removeAll(Lcom/google/common/collect/RangeSet;)V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->removeAll(Lcom/google/common/collect/RangeSet;)V

    return-void
.end method

.method public bridge synthetic removeAll(Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->removeAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method public span()Lcom/google/common/collect/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 171
    .local v0, "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 172
    .local v1, "lastEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-nez v0, :cond_0

    .line 173
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 175
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    iget-object v3, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {v3, v2}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v2

    return-object v2
.end method

.method public subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 864
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "view":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;-><init>(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)V

    move-object p0, v0

    goto :goto_0
.end method