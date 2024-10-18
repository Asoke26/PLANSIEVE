SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 5
AND u.DownVotes >= 45
AND u.UpVotes >= 157
AND u.UpVotes <= 196
AND b.Date >= 1501
AND u.CreationDate >= 242
AND u.CreationDate <= 1104

AND u.Id = c.UserId
AND c.UserId = b.UserId;