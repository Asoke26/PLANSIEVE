SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 6
AND u.DownVotes >= 104
AND u.UpVotes >= 160
AND u.UpVotes <= 692
AND b.Date >= 460
AND u.CreationDate >= 303
AND u.CreationDate <= 1215

AND u.Id = c.UserId
AND c.UserId = b.UserId;