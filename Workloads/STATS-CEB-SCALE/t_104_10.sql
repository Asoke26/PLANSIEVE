SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE c.Score = 5
AND u.Views <= 611
AND u.DownVotes >= 16
AND c.CreationDate >= 642
AND c.CreationDate <= 926
AND u.CreationDate <= 1454

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;