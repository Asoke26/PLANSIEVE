SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE c.Score = 6
AND u.Views <= 305
AND u.DownVotes >= 21
AND c.CreationDate >= 144
AND c.CreationDate <= 527
AND u.CreationDate <= 950

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;