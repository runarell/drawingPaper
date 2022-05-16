/**
 * 
 */

// var quill = new Quill("#editor-container", {
//   modules: {
//     formula: true,
//     syntax: true,
//     toolbar: "#toolbar-container",
//   },
//   placeholder: "게시물을 작성해주세요.",
//   theme: "snow",
// });

//Initialize Quill editor
// var quill = new Quill("#editor", {
//   theme: "snow",
//   placeholder: "게시물을 작성해주세요.",

// });

var toolbarOptions = [
  ["bold", "italic", "underline", "strike"], // toggled buttons
  ["blockquote", "code-block", "image"],

  [{ header: 1 }, { header: 2 }], // custom button values
  [{ list: "ordered" }, { list: "bullet" }],
  [{ script: "sub" }, { script: "super" }], // superscript/subscript
  [{ indent: "-1" }, { indent: "+1" }], // outdent/indent
  [{ direction: "rtl" }], // text direction

  [{ size: ["small", false, "large", "huge"] }], // custom dropdown
  [{ header: [1, 2, 3, 4, 5, 6, false] }],

  [{ color: [] }, { background: [] }], // dropdown with defaults from theme
  [{ font: [] }],
  [{ align: [] }],

  ["clean"], // remove formatting button
];

var quill = new Quill("#editor", {
  modules: {
    toolbar: toolbarOptions,
  },
  theme: "snow",
});

$(".save").on("click", function () {
  let text = getQuillHtml();
  console.log(text);
});

// quill.on("text-change", function (delta, source) {
//   updateHtmlOutput();
// });

function getQuillHtml() {
  return quill.root.innerHTML;
}

function updateHtmlOutput() {
  let html = getQuillHtml();
}

$("#admheader").load("cpHeader.jsp");