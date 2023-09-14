# Treasure Hunt

## 1. Welcome
### Challenge
```
**環境建立說明：**

1. 打開 Terminal 建立一個放 SCIST - Linux 相關檔案的資料夾（直接複製以下指令）

<div class="code-box">
  <div class="code-view">
    <div class="code" id="code1">
      mkdir ~/SCIST_Linux_Challenge && cd ~/SCIST_Linux_Challenge
    </div>
  </div>
  <button class="copy-button" id="copy1" onclick="copyCode('copy1', 'code1')"><i class='code-box-icon'></i></button>
</div>
<br>

2. 下載 `snippet.sh` 並用它來安裝需要的 Package（直接複製以下指令）

<div class="code-box">
  <div class="code-view">
    <div class="code" id="code2">
      wget https://linux.ctf.scist.org/files/3e92d4a7939c83434cbf374da8b5e6d4/snippet && chmod +x snippet && ./snippet install
    </div>
  </div>
  <button class="copy-button" id="copy2" onclick="copyCode('copy2', 'code2')"><i class='code-box-icon'></i></button>
</div>
<br>

3. 重新啟動（如果原本就有 Docker 就不需要）

---

**使用說明：**

0. 移動到挑戰資料的資料夾（直接複製以下指令）：

<div class="code-box">
  <div class="code-view">
    <div class="code" id="code3">
      cd ~/SCIST_Linux_Challenge
    </div>
  </div>
  <button class="copy-button" id="copy3" onclick="copyCode('copy3', 'code3')"><i class='code-box-icon'></i></button>
</div>
<br>

1. 開始挑戰（直接複製以下指令）：

<div class="code-box">
  <div class="code-view">
    <div class="code" id="code4">
      ./snippet start
    </div>
  </div>
  <button class="copy-button" id="copy4" onclick="copyCode('copy4', 'code4')"><i class='code-box-icon'></i></button>
</div>
<br>

2. 關閉挑戰（直接複製以下指令）：

<div class="code-box">
  <div class="code-view">
    <div class="code" id="code5">
      ./snippet stop
    </div>
  </div>
  <button class="copy-button" id="copy5" onclick="copyCode('copy5', 'code5')"><i class='code-box-icon'></i></button>
</div>
<br>

3. 取得說明（直接複製以下指令）：

<div class="code-box">
  <div class="code-view">
    <div class="code" id="code6">
      ./snippet
    </div>
  </div>
  <button class="copy-button" id="copy6" onclick="copyCode('copy6', 'code6')"><i class='code-box-icon'></i></button>
</div>
<br>

---

**重要資訊 :**
1. 離開挑戰請輸入 `exit`
2. 電腦關機前一定要記得關閉挑戰
3. 如果在挑戰中需要使用到 `sudo`，密碼是 `password`
4. Flag format : `SCIST{.*}`

<br>

Author : Curious
<style>
  .code-box {
    background-color: rgba(0, 0, 0, 0.1);
    width: 100%;
    position: relative;
    font-family: monospace;
    border: none;
    border-radius: 10px;
    display: flex;
    align-items: center;
  }

  .code-view {
    width: 100%;
    overflow-x: scroll;
    padding: 15px 0;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .code {
    display: inline-block;
    white-space: nowrap;
    padding: 0 60px 0 20px;
		font-size: 16px;
  }

  .copy-button {
    cursor: pointer;
    position: absolute;
    right: 6px;
    display: inline-flex;
    align-items: center;
    padding: 12px;
    outline: 0;
    border: 0;
    border-radius: 50%;
    background: #004cbd;
    transition: all .3s ease;
  }

  .copy-button:hover {
    opacity: 0.8;
  }

  .code-box-icon {
    flex-shrink: 0;
    display: inline-block;
    width: 18px;
    height: 18px;
    background-image: url("data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' fill='none' stroke='%23fefefe' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' viewBox='0 0 24 24'><rect x='5.54615' y='5.54615' width='16.45385' height='16.45385' rx='4'/><path d='M171.33311,181.3216v-8.45385a4,4,0,0,1,4-4H183.787' transform='translate(-169.33311 -166.86775)'/></svg>");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
  }

  .copy-button.copied {
    background: #2dcda7;
  }

  .copy-button.copied .copy-box-icon{
    background-image:url("data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' fill='none' stroke='%23fefefe' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' viewBox='0 0 24 24'><path d='M22 11.07V12a10 10 0 1 1-5.93-9.14'/><polyline points='23 3 12 14 9 11'/></svg>")
  }
</style>
<script>
  function copyCode(e, t){
    var o = document.getElementById(e), n = document.getElementById(t), e = getSelection(), t = document.createRange();
    e.removeAllRanges(), t.selectNodeContents(n), e.addRange(t), document.execCommand("copy"), e.removeAllRanges(), o.classList.add("copied"), setTimeout(() => {o.classList.remove("copied")}, 3e3)
  }
</script>
```

### Flag
```
SCIST{Please_contact_"curious_lucifer"_at_Discord_for_any_question}
```

---
## 2. ls & cat
### Challenge
```
To be a treasure hunter, observation is very important for you. Is there any strange files here? What's in it?

<br>

Author : Curious

---

Location : `/home/treasure_hunter`
```

### Flag
```
SCIST{I_am_really_normal,_really!...Really???}
```

---
## 3. cd
### Challenge
```
Part 1 :  
DaZhuang said that the treasure map of "People's Law Gavel 🔨" is divided into three parts. The first part is in the `desert` under our home directory.

Location : `/home/treasure_hunter/desert`

---
Part 2 :  
The next part is in the `monkey_house` in the `rainforest`. The `rainforest` is under `/tmp`.

Location : `/tmp/rainforest/monkey_house`

---
Part 3 :  
The last part is in `/opt/Black_Pearl/wine_barrel/../secret_place`. Well, here's Jack Sparrow's pocket.

Location : `/opt/Black_Pearl/wine_barrel/../secret_place`

**※注意：這一題的 Flag 之後會用到，要留著**

<br>

Author : Curious
```

### Flag
```
SCIST{Yo_Ho,_Yo_Ho!_A_pirate's_life_for_me.}
```

---
## 4. file & chmod & execute
### Challenge
```
You got the last part of the treasure map from Jack Sparrow. In exchange, you must teach him how to use a compass. Compass is in `/opt/Black_Pearl/captains_cabin`.

<br>

Author : Curious

---

Location : `/opt/Black_Pearl/captains_cabin`
```

### Flag
```
SCIST{Compass_is_really_easy_to_use!}
```

---
## 5. hidden file
### Challenge
```
Before leaving the captain's cabin, you suddenly notice a golden object looming ...

<br>

Author : Curious

---

Location : `/opt/Black_Pearl/captains_cabin`
```

### Flag
```
SCIST{The_curse_has_been_lifted!}
```

---
## 6. create & write file
### Challenge
```
The treasure map is written in ancient characters and needs to be translated. There's a translator in `~/tools`.

<br>

Author : Curious

---

Location : `~/tools`
```

### Flag
```
SCIST{According_to_legend,_this_is_a_Viking_treasure_...}
```

---
## 7. mkdir & mv 1
### Challenge
```
The treasure map says the treasure is in the sea, so we need a ship to find it. Build a ship call `Shipwreck_Ship` under the home directory, then move the `magic_engine` in `~/tools` to our ship.

<br>

Author : Curious

---

Location : `/home/treasure_hunter` and `~/tools` 
```

### Flag
```
SCIST{Magic_engine_doesn't_like_sinking_ships_><}
```

---
## 8. mkdir & mv 2
### Challenge
```
Well the magic engine just work on ship call `Titanic`

<br>

Author : Curious

---

Location : `/home/treasure_hunter`
```

### Flag
```
SCIST{Yes,_that's_right!_Wait!_Ship_is_sinking_!?!}
```

---
## 9. find
### Challenge
```
Follow the treasure map to a small island, where there is a maze (`~/ocean/small_island/maze`). The treasure map says that there is a `flag` inserted somewhere in the maze, and under that `flag` is the treasure.

<br>

Author : Curious

---

Location : `~/ocean/small_island/maze`
```

### Flag
```
SCIST{I_found_the_"People's_Law_Gavel"_!!!}
```

---
## 10. unzip & rar & tar
### Challenge
```
Treasure !!!

<br>

Author : Curious

---

Location : `~/ocean/small_island/maze/R/f/m/g/a`
```

### Flag
```
SCIST{Hit_Curious_or_not,_this_is_a_question_**}
```