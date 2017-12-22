.class public Lcom/xiaomi/finddevice/v2/command/NoiseService;
.super Landroid/app/Service;
.source "NoiseService.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShowHideStopWindowHandler:Landroid/os/Handler;

.field private mStopNoisingWindow:Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/xiaomi/finddevice/v2/command/NoiseService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mShowHideStopWindowHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/xiaomi/finddevice/v2/command/NoiseService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->performShowHideStopWindow()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private clearLastSavedVolume()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    const-string/jumbo v1, "volume"

    .line 123
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    const-string/jumbo v1, "ringermode"

    .line 123
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void
.end method

.method private hasLastSavedVolume()Z
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "volume"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hideStopWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mStopNoisingWindow:Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mStopNoisingWindow:Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;->dismiss()V

    .line 205
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mStopNoisingWindow:Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;

    .line 202
    :cond_0
    return-void
.end method

.method private performShowHideStopWindow()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->hideStopWindow()V

    .line 187
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->showStopWindow()V

    goto :goto_0
.end method

.method private restoreAndClearLastSavedVolumeIfExists()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->hasLastSavedVolume()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mAudioManager:Landroid/media/AudioManager;

    .line 108
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "volume"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 107
    const/4 v2, 0x4

    .line 106
    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 110
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "ringermode"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 111
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->clearLastSavedVolume()V

    .line 104
    :cond_0
    return-void
.end method

.method private saveVolume(II)V
    .locals 2
    .param p1, "volume"    # I
    .param p2, "ringermode"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    const-string/jumbo v1, "volume"

    .line 116
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "ringermode"

    .line 116
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    return-void
.end method

.method private showStopWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mStopNoisingWindow:Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mStopNoisingWindow:Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;

    .line 198
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mStopNoisingWindow:Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;->show()V

    .line 195
    :cond_0
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/finddevice/v2/command/NoiseService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/support/v4/content/WakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    return-void
.end method

.method private startToNoise()V
    .locals 9

    .prologue
    const/4 v2, 0x4

    .line 134
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->saveVolume(II)V

    .line 135
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 136
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    .line 137
    .local v8, "maxVolume":I
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v8, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 140
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 141
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_0

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "afd == NULL,  the file exists but is compressed. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 147
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 146
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 148
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 149
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 150
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 151
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 152
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaomi/finddevice/v2/command/NoiseService$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService$2;-><init>(Lcom/xiaomi/finddevice/v2/command/NoiseService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 157
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaomi/finddevice/v2/command/NoiseService$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService$3;-><init>(Lcom/xiaomi/finddevice/v2/command/NoiseService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 163
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 164
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-void

    .line 166
    :catch_0
    move-exception v7

    .line 167
    .local v7, "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Failed to load the noise resource. "

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private startToShowHideStopWindow()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mShowHideStopWindowHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/finddevice/v2/command/NoiseService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 42
    return-void
.end method

.method private stopNoising()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 173
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 175
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->restoreAndClearLastSavedVolumeIfExists()V

    .line 171
    return-void
.end method

.method private stopToShowHideStopWindow()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mShowHideStopWindowHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->hideStopWindow()V

    .line 182
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->notifyStartNoising(Landroid/content/Context;)V

    .line 55
    const-string/jumbo v0, "com.xiaomi.finddevice.NoiseService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 56
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mAudioManager:Landroid/media/AudioManager;

    .line 57
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 59
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 60
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 61
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 63
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 64
    new-instance v0, Lcom/xiaomi/finddevice/v2/command/NoiseService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/finddevice/v2/command/NoiseService$1;-><init>(Lcom/xiaomi/finddevice/v2/command/NoiseService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mShowHideStopWindowHandler:Landroid/os/Handler;

    .line 73
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->restoreAndClearLastSavedVolumeIfExists()V

    .line 75
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->startToNoise()V

    .line 77
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->startToShowHideStopWindow()V

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 84
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->stopToShowHideStopWindow()V

    .line 86
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->stopNoising()V

    .line 88
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 90
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->notifyEndNoising(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 95
    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 96
    const/4 v0, 0x2

    return v0
.end method
