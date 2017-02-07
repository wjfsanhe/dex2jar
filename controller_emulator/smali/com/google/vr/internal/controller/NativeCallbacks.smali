.class public final Lcom/google/vr/internal/controller/NativeCallbacks;
.super Ljava/lang/Object;
.source "NativeCallbacks.java"

# interfaces
.implements Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;


# annotations
.annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
.end annotation


# instance fields
.field private closed:Z

.field private final userData:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "userData"    # J
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    .line 45
    return-void
.end method

.method private native handleAccelEvent(JJFFF)V
.end method

.method private native handleButtonEvent(JJIZ)V
.end method

.method private native handleControllerRecentered(JJFFFF)V
.end method

.method private handleEventsCompatibilityLocked(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 17
    .param p1, "eventPacket"    # Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    .prologue
    .line 98
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getAccelEventCount()I

    move-result v3

    if-ge v14, v3, :cond_0

    .line 99
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getAccelEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    move-result-object v2

    .line 100
    .local v2, "accelEvent":Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget-wide v6, v2, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->timestampNanos:J

    iget v8, v2, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->x:F

    iget v9, v2, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->y:F

    iget v10, v2, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->z:F

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleAccelEvent(JJFFF)V

    .line 98
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "accelEvent":Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;
    :cond_0
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getButtonEventCount()I

    move-result v3

    if-ge v14, v3, :cond_1

    .line 107
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getButtonEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    move-result-object v12

    .line 108
    .local v12, "buttonEvent":Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget-wide v6, v12, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->timestampNanos:J

    iget v8, v12, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    iget-boolean v9, v12, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleButtonEvent(JJIZ)V

    .line 106
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 114
    .end local v12    # "buttonEvent":Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    :cond_1
    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getGyroEventCount()I

    move-result v3

    if-ge v14, v3, :cond_2

    .line 115
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getGyroEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    move-result-object v13

    .line 116
    .local v13, "gyroEvent":Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget-wide v6, v13, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->timestampNanos:J

    iget v8, v13, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->x:F

    iget v9, v13, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->y:F

    iget v10, v13, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->z:F

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleGyroEvent(JJFFF)V

    .line 114
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 121
    .end local v13    # "gyroEvent":Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;
    :cond_2
    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getOrientationEventCount()I

    move-result v3

    if-ge v14, v3, :cond_3

    .line 122
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getOrientationEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    move-result-object v15

    .line 123
    .local v15, "orientationEvent":Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget-wide v6, v15, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->timestampNanos:J

    iget v8, v15, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    iget v9, v15, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    iget v10, v15, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    iget v11, v15, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleOrientationEvent(JJFFFF)V

    .line 121
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 129
    .end local v15    # "orientationEvent":Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
    :cond_3
    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getTouchEventCount()I

    move-result v3

    if-ge v14, v3, :cond_4

    .line 130
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getTouchEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    move-result-object v16

    .line 131
    .local v16, "touchEvent":Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->timestampNanos:J

    move-object/from16 v0, v16

    iget v8, v0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->action:I

    move-object/from16 v0, v16

    iget v9, v0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->x:F

    move-object/from16 v0, v16

    iget v10, v0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->y:F

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleTouchEvent(JJIFF)V

    .line 129
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 134
    .end local v16    # "touchEvent":Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;
    :cond_4
    return-void
.end method

.method private native handleGyroEvent(JJFFF)V
.end method

.method private native handleOrientationEvent(JJFFFF)V
.end method

.method private native handlePositionEvent(JJFFF)V
.end method

.method private native handleServiceConnected(JI)V
.end method

.method private native handleServiceDisconnected(J)V
.end method

.method private native handleServiceFailed(J)V
.end method

.method private native handleServiceInitFailed(JI)V
.end method

.method private native handleServiceUnavailable(J)V
.end method

.method private native handleStateChanged(JII)V
.end method

.method private native handleTouchEvent(JJIFF)V
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 1
    .param p1, "eventPacket"    # Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleEventsCompatibilityLocked(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
    .locals 10
    .param p1, "eventPacket"    # Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleEventsCompatibilityLocked(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-boolean v1, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->getPositionEventCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 90
    invoke-virtual {p1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->getPositionEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    move-result-object v9

    .line 91
    .local v9, "posEvent":Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;
    iget-wide v2, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget-wide v4, v9, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->timestampNanos:J

    iget v6, v9, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->x:F

    iget v7, v9, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->y:F

    iget v8, v9, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->z:F

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/vr/internal/controller/NativeCallbacks;->handlePositionEvent(JJFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "i":I
    .end local v9    # "posEvent":Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .locals 10
    .param p1, "orientationEvent"    # Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 139
    iget-wide v2, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget-wide v4, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->timestampNanos:J

    iget v6, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    iget v7, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    iget v8, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    iget v9, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleControllerRecentered(JJFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onControllerStateChanged(II)V
    .locals 2
    .param p1, "controllerId"    # I
    .param p2, "newState"    # I

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 66
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleStateChanged(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 147
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleServiceConnected(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected()V
    .locals 2

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 154
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleServiceDisconnected(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceFailed()V
    .locals 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 161
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleServiceFailed(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceInitFailed(I)V
    .locals 2
    .param p1, "initResult"    # I

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 175
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleServiceInitFailed(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceUnavailable()V
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 168
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleServiceUnavailable(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method